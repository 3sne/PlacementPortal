USE [D:\DESKTOP\IT PROJECT\PLACEMENTPORTAL\PLACEMENTPORTAL\APP_DATA\DB_PLACEMENT.MDF]
GO

/****** Object: Table [dbo].[_login_role] Script Date: 10/29/2019 6:08:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[_login_role];


GO
CREATE TABLE [dbo].[_login_role] (
    [role_id]     INT           NOT NULL,
    [role]        VARCHAR (50)  NOT NULL,
    [description] VARCHAR (MAX) NULL
);

CREATE TABLE [dbo].[announcements] (
    [announcement_id] VARCHAR (50)  NOT NULL,
    [date]            DATE          NOT NULL,
    [content]         VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([announcement_id] ASC)
);

CREATE TABLE [dbo].[auth_recruiter] (
    [recruiter_id] VARCHAR (50)  NOT NULL,
    [password]     VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([recruiter_id] ASC),
    CONSTRAINT [FK_auth_recruiter_To_recruiter_account] FOREIGN KEY ([recruiter_id]) REFERENCES [dbo].[recruiter_account] ([recruiter_id]) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE [dbo].[auth_student] (
    [student_id] VARCHAR (50)  NOT NULL,
    [password]   VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC),
    CONSTRAINT [FK_auth_student_To_student_account] FOREIGN KEY ([student_id]) REFERENCES [dbo].[student_account] ([student_id])
);

CREATE TABLE [dbo].[data_job_list] (
    [job_id]                VARCHAR (50)  NOT NULL,
    [recruiter_id]          VARCHAR (50)  NOT NULL,
    [position]              VARCHAR (50)  NOT NULL,
    [job_description]       VARCHAR (MAX) NOT NULL,
    [eligible_gpa]          VARCHAR (50)  NOT NULL,
    [eligible_branch]       VARCHAR (MAX) NOT NULL,
    [offer_type]            VARCHAR (50)  NOT NULL,
    [compensation]          VARCHAR (50)  NOT NULL,
    [registration_deadline] VARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([job_id] ASC),
    CONSTRAINT [FK_data_job_list_To_recruiter_account] FOREIGN KEY ([recruiter_id]) REFERENCES [dbo].[recruiter_account] ([recruiter_id]) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE [dbo].[data_job_registration] (
    [student_id] VARCHAR (50) NOT NULL,
    [job_id]     VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC, [job_id] ASC),
    CONSTRAINT [FK_data_job_registration_To_data_job_list] FOREIGN KEY ([job_id]) REFERENCES [dbo].[data_job_list] ([job_id]),
    CONSTRAINT [FK_data_job_registration_To_student_account] FOREIGN KEY ([student_id]) REFERENCES [dbo].[student_account] ([student_id])
);

CREATE TABLE [dbo].[recruiter_account] (
    [recruiter_id]   VARCHAR (50) NOT NULL,
    [recruiter_name] VARCHAR (50) NOT NULL,
    [company_size]   VARCHAR (50) NOT NULL,
    [field]          VARCHAR (50) NOT NULL,
    [establish_date] DATE         NOT NULL,
    [director]       VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([recruiter_id] ASC)
);

CREATE TABLE [dbo].[student_account] (
    [student_id] VARCHAR (50) NOT NULL,
    [first_name] VARCHAR (50) NOT NULL,
    [last_name]  VARCHAR (50) NOT NULL,
    [gender]     VARCHAR (50) NOT NULL,
    [email]      VARCHAR (50) NOT NULL,
    [dob]        DATE         NOT NULL,
    [course]     VARCHAR (50) NOT NULL,
    [branch]     VARCHAR (50) NOT NULL,
    [semester]   VARCHAR (50) NOT NULL,
    [section]    VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC)
);

CREATE TABLE [dbo].[student_info] (
    [student_id]        VARCHAR (50)  NOT NULL,
    [phone_number]      VARCHAR (50)  NOT NULL,
    [x_score]           VARCHAR (50)  NULL,
    [xii_score]         VARCHAR (50)  NULL,
    [backlog]           VARCHAR (50)  NULL,
    [father_name]       VARCHAR (50)  NULL,
    [citizenship]       VARCHAR (50)  NULL,
    [father_mobile]     VARCHAR (50)  NULL,
    [father_occupation] VARCHAR (50)  NULL,
    [state]             VARCHAR (50)  NULL,
    [city]              VARCHAR (50)  NULL,
    [address]           VARCHAR (MAX) NULL,
    [x_board]           VARCHAR (50)  NULL,
    [xii_board]         VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC),
    CONSTRAINT [FK_student_info_To_student_account] FOREIGN KEY ([student_id]) REFERENCES [dbo].[student_account] ([student_id])
);



