package cn.com.webxml;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 3.0.9
 * 2018-06-23T17:49:50.366+08:00
 * Generated source version: 3.0.9
 * 
 */
@WebService(targetNamespace = "http://WebXml.com.cn/", name = "WeatherWSSoap")
@XmlSeeAlso({ObjectFactory.class})
public interface WeatherWSSoap {

    /**
     * <br /><h3>获得中国省份、直辖市、地区；国家名称（国外）和与之对应的ID</h3><p>输入参数：无，返回数据：DataSet。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getRegionDataset")
    @RequestWrapper(localName = "getRegionDataset", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionDataset")
    @ResponseWrapper(localName = "getRegionDatasetResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionDatasetResponse")
    @WebResult(name = "getRegionDatasetResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.GetRegionDatasetResponse.GetRegionDatasetResult getRegionDataset();

    /**
     * <br /><h3>获得国外国家名称和与之对应的ID</h3><p>输入参数：无，返回数据：一维字符串数组。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getRegionCountry")
    @RequestWrapper(localName = "getRegionCountry", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionCountry")
    @ResponseWrapper(localName = "getRegionCountryResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionCountryResponse")
    @WebResult(name = "getRegionCountryResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.ArrayOfString getRegionCountry();

    /**
     * <br /><h3>获得天气预报数据</h3><p>输入参数：城市/地区ID或名称，返回数据：一维字符串数组。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getWeather")
    @RequestWrapper(localName = "getWeather", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetWeather")
    @ResponseWrapper(localName = "getWeatherResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetWeatherResponse")
    @WebResult(name = "getWeatherResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.ArrayOfString getWeather(
        @WebParam(name = "theCityCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theCityCode,
        @WebParam(name = "theUserID", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theUserID
    );

    /**
     * <br /><h3>获得支持的城市/地区名称和与之对应的ID</h3><p>输入参数：theRegionCode = 省市、国家ID或名称，返回数据：DataSet。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getSupportCityDataset")
    @RequestWrapper(localName = "getSupportCityDataset", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetSupportCityDataset")
    @ResponseWrapper(localName = "getSupportCityDatasetResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetSupportCityDatasetResponse")
    @WebResult(name = "getSupportCityDatasetResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.GetSupportCityDatasetResponse.GetSupportCityDatasetResult getSupportCityDataset(
        @WebParam(name = "theRegionCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theRegionCode
    );

    /**
     * <br /><h3>获得中国省份、直辖市、地区和与之对应的ID</h3><p>输入参数：无，返回数据：一维字符串数组。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getRegionProvince")
    @RequestWrapper(localName = "getRegionProvince", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionProvince")
    @ResponseWrapper(localName = "getRegionProvinceResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetRegionProvinceResponse")
    @WebResult(name = "getRegionProvinceResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.ArrayOfString getRegionProvince();

    /**
     * <br /><h3>获得支持的城市/地区名称和与之对应的ID</h3><p>输入参数：theRegionCode = 省市、国家ID或名称，返回数据：一维字符串数组。</p><br />
     */
    @WebMethod(action = "http://WebXml.com.cn/getSupportCityString")
    @RequestWrapper(localName = "getSupportCityString", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetSupportCityString")
    @ResponseWrapper(localName = "getSupportCityStringResponse", targetNamespace = "http://WebXml.com.cn/", className = "cn.com.webxml.GetSupportCityStringResponse")
    @WebResult(name = "getSupportCityStringResult", targetNamespace = "http://WebXml.com.cn/")
    public cn.com.webxml.ArrayOfString getSupportCityString(
        @WebParam(name = "theRegionCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theRegionCode
    );
}