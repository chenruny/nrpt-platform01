package com.nrpt.common.core.exception.file;

import com.nrpt.common.core.exception.base.BaseException;

/**
 * 文件信息异常类
 * 
 * @author nrpt
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}
