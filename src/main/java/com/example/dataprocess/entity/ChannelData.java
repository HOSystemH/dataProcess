package com.example.dataprocess.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

@Data
public class ChannelData {

    @ExcelProperty(index = 0)
    private String time;
    @ExcelProperty(index = 1)
    private String channel;
}
