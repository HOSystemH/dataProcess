package com.example.dataprocess.service;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.read.builder.ExcelReaderBuilder;
import com.example.dataprocess.entity.ChannelData;
import com.example.dataprocess.listener.ChannelDataExcelListener;
import com.example.dataprocess.util.TestFileUtil;
import org.springframework.stereotype.Service;

import java.io.File;

@Service
public class DataProcessService {

    public void readExcel(){
        String fileName = TestFileUtil.getPath()+ "excel" + File.separator+"1.xlsx";
        ExcelReaderBuilder read = EasyExcel.read(fileName, ChannelData.class, new ChannelDataExcelListener());
        read.sheet().doRead();
    }
}
