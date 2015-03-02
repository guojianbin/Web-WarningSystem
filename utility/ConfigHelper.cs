using System;
using System.Configuration;

namespace utility
{
    /// <summary>
    /// web.config������
    /// </summary>
    public class ConfigHelper
    {
        /// <summary>
        /// �õ�AppSettings�е������ַ�����Ϣ
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetConfigString(string key)
        {
            string value = "";
            try
            {
                value = ConfigurationManager.AppSettings[key];
            }
            catch (Exception exception)
            {
                LogHelper.Error("��ȡ" + key + "����ʧ��" + exception);
            }
            return value;
        }

        /// <summary>
        /// �õ�AppSettings�е�����Bool��Ϣ
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static bool GetConfigBool(string key)
        {
            bool result = false;
            string cfgVal = GetConfigString(key);
            if (!string.IsNullOrEmpty(cfgVal))
            {
                try
                {
                    result = bool.Parse(cfgVal);
                }
                catch (FormatException exception)
                {
                    LogHelper.Error("��ȡ" + key + "����ʧ��" + exception);
                }
            }
            return result;
        }
        /// <summary>
        /// �õ�AppSettings�е�����Decimal��Ϣ
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static decimal GetConfigDecimal(string key)
        {
            decimal result = 0;
            string cfgVal = GetConfigString(key);
            if (!string.IsNullOrEmpty(cfgVal))
            {
                try
                {
                    result = decimal.Parse(cfgVal);
                }
                catch (FormatException exception)
                {
                    LogHelper.Error("��ȡ" + key + "����ʧ��" + exception);
                }
            }
            return result;
        }
        /// <summary>
        /// �õ�AppSettings�е�����int��Ϣ
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static int GetConfigInt(string key)
        {
            int result = 0;
            string cfgVal = GetConfigString(key);
            if (!string.IsNullOrEmpty(cfgVal))
            {
                try
                {
                    result = int.Parse(cfgVal);
                }
                catch (FormatException exception)
                {
                    LogHelper.Error("��ȡ" + key + "����ʧ��" + exception);
                }
            }
            return result;
        }
    }
}
