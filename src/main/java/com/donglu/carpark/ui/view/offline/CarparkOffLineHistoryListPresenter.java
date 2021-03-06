package com.donglu.carpark.ui.view.offline;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.eclipse.swt.widgets.Composite;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.donglu.carpark.server.servlet.ImageUploadServlet;
import com.donglu.carpark.service.CarparkDatabaseServiceProvider;
import com.donglu.carpark.service.CarparkInOutServiceI;
import com.donglu.carpark.ui.common.AbstractListPresenter;
import com.donglu.carpark.ui.common.AbstractListView;
import com.donglu.carpark.ui.common.ImageDialog;
import com.donglu.carpark.ui.common.View;
import com.donglu.carpark.util.ExcelImportExport;
import com.donglu.carpark.util.ExcelImportExportImpl;
import com.dongluhitec.card.common.ui.CommonUIFacility;
import com.dongluhitec.card.domain.db.singlecarpark.CarparkOffLineHistory;
import com.dongluhitec.card.domain.util.StrUtil;
import com.google.inject.Inject;

public class CarparkOffLineHistoryListPresenter extends AbstractListPresenter<CarparkOffLineHistory> {
	private static final Logger LOGGER = LoggerFactory.getLogger(ImageUploadServlet.class);
	private CarparkOffLineHistoryListView v;
	@Inject
	private CarparkDatabaseServiceProvider sp;
	@Inject
	private CommonUIFacility commonui;

	private String deviceName;
	private Date start;
	private Date end;

	@Override
	public void refresh() {
		v.getModel().setList(new ArrayList<>());
		defaultSearch();
	}

	private void defaultSearch() {
		AbstractListView<CarparkOffLineHistory>.Model model = v.getModel();
		CarparkInOutServiceI carparkInOutService = sp.getCarparkInOutService();
		List<CarparkOffLineHistory> findByCondition = carparkInOutService.findCarparkOffLineHistoryBySearch(model.getList().size(), 500, deviceName, start, end);
		Long countByCondition =carparkInOutService.countCarparkOffLineHistoryBySearch(deviceName, start, end);
		model.setCountSearchAll(countByCondition.intValue());
		model.AddList(findByCondition);
		model.setCountSearch(model.getList().size());
	}


	public void searchMore() {
		AbstractListView<CarparkOffLineHistory>.Model model = v.getModel();
		if (model.getCountSearchAll() <= model.getCountSearch()) {
			return;
		}
		defaultSearch();
	}
	public void exportSearch() {
		List<CarparkOffLineHistory> list = v.getModel().getList();
		if (StrUtil.isEmpty(list)) {
			return;
		}
		String selectToSave = commonui.selectToSave();
		if (StrUtil.isEmpty(selectToSave)) {
			return;
		}
		String path = StrUtil.checkPath(selectToSave, new String[] { ".xls", ".xlsx" }, ".xls");
		String[] columnProperties = v.getColumnProperties();
		String[] nameProperties = v.getNameProperties();
		ExcelImportExport excelImportExport = new ExcelImportExportImpl();
		try {
			excelImportExport.export(path, nameProperties, columnProperties, list);
			commonui.info("操作成功", "导出成功");
			LOGGER.info("导出{}条进出场记录成功",list.size());
		} catch (Exception e) {
			commonui.info("操作失败", "操作失败"+e.getMessage());
			LOGGER.info("导出进出场记录失败",e);
		}
	}

	@Override
	protected View createView(Composite c) {
		v = new CarparkOffLineHistoryListView(c, c.getStyle());
		return v;
	}

	public void search(String deviceName, Date start, Date end) {
		this.deviceName = deviceName;
		this.start = start;
		this.end = end;
		refresh();
	}

	@Override
	public void mouseDoubleClick(List<CarparkOffLineHistory> list) {
		if (StrUtil.isEmpty(list)) {
			return;
		}
		CarparkOffLineHistory carparkOffLineHistory = list.get(0);
		String bigImage = carparkOffLineHistory.getBigImage();
		if (StrUtil.isEmpty(bigImage)) {
			return;
		}
		ImageDialog d=new ImageDialog(bigImage);
		d.open();
	}
}
