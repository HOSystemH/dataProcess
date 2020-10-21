package com.example.dataprocess.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.example.dataprocess.entity.ChannelData;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
@Slf4j
public class ChannelDataExcelListener extends AnalysisEventListener<ChannelData> {
    //JackSon
//    @Resource
    ObjectMapper objectMapper =new ObjectMapper();
    /**
     * 批处理阈值
     */
    private static final int BATCH_COUNT = 1;
    List<ChannelData> list = new ArrayList<ChannelData>(BATCH_COUNT);

    private void saveData(){
        log.info("{}条数据，开始存储数据库！", list.size());
        log.info("存储数据库成功！");
    }

    @Override
    public void invoke(ChannelData channelData, AnalysisContext analysisContext) {
        try {
            log.info("解析到一条数据:{}", objectMapper.writeValueAsString(channelData));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        list.add(channelData);
        if (list.size() >= BATCH_COUNT) {
            saveData();
            list.clear();
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        saveData();
        log.info("所有数据解析完成！");
    }
}
