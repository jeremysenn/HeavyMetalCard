# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130819181645) do

  create_table "AccountTypes", :primary_key => "AccountTypeID", :force => true do |t|
    t.string   "AccountTypeDesc", :limit => 50
    t.datetime "LockDate"
    t.string   "LockUser",        :limit => 50
    t.integer  "AddFlag",         :limit => 1
    t.integer  "MoveFlag",        :limit => 1
    t.integer  "DepositFlag",     :limit => 1
    t.string   "AddPriTranCode",  :limit => 4,   :default => "ERR"
    t.string   "AddTranDesc",     :limit => 50
    t.string   "AddTranIcon",     :limit => 500
    t.string   "MovePriTranCode", :limit => 4,   :default => "ERR"
    t.string   "MoveTranDesc",    :limit => 50
    t.string   "MoveTranIcon",    :limit => 500
    t.string   "AddBalEff",       :limit => 1,   :default => "0"
    t.string   "AddFeeEff",       :limit => 1,   :default => "0"
    t.string   "MoveBalEff",      :limit => 1,   :default => "0"
    t.string   "MoveFeeEff",      :limit => 1,   :default => "0"
    t.string   "AddSecTranCode",  :limit => 4
    t.string   "MoveSecTranCode", :limit => 5
    t.integer  "DescLangObjID"
    t.integer  "AuxTextObjID"
  end

  create_table "Accounts", :primary_key => "ActID", :force => true do |t|
    t.integer  "CustomerID"
    t.integer  "CompanyNumber"
    t.integer  "EntityID"
    t.integer  "ActTypeID"
    t.string   "ActNbr",        :limit => 50
    t.decimal  "Balance",                      :default => 0.0
    t.string   "ButtonText",    :limit => 50
    t.integer  "AddIndex",                     :default => 0
    t.integer  "AddFlag",       :limit => 1,   :default => 0
    t.decimal  "AddFee",                       :default => 0.0
    t.integer  "MoveIndex",                    :default => 0
    t.integer  "MoveFlag",      :limit => 1,   :default => 0
    t.decimal  "MoveFee",                      :default => 0.0
    t.integer  "DepositFlag",   :limit => 1,   :default => 0
    t.datetime "CreateDate"
    t.string   "CreateUser",    :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",  :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",      :limit => 40
    t.integer  "AddGroupID"
    t.integer  "MoveGroupID"
    t.integer  "AddParentID"
    t.integer  "MoveParentID"
    t.string   "AuxText",       :limit => 500
    t.integer  "Active",        :limit => 1,   :default => 1
    t.integer  "AbleToDelete",  :limit => 1,   :default => 1
    t.integer  "IsBankAccount", :limit => 1,   :default => 0
    t.integer  "AbleToACH",     :limit => 1
    t.string   "SecurityCode",  :limit => 50
    t.string   "ExpDate",       :limit => 50
  end

  create_table "AuthBinRange", :id => false, :force => true do |t|
    t.string "AuthID",  :limit => 50
    t.string "BinLow",  :limit => 16, :null => false
    t.string "BinHigh", :limit => 16, :null => false
  end

  create_table "Authorizers", :id => false, :force => true do |t|
    t.string  "AuthID",      :limit => 10,  :null => false
    t.string  "Description", :limit => 100
    t.string  "HostName",    :limit => 50
    t.integer "PortNbr"
    t.string  "HeaderType",  :limit => 1
    t.integer "HeaderLen"
    t.string  "HeaderOrder", :limit => 1
    t.integer "DefaultFlag"
  end

  create_table "CardIssueFieldMap", :id => false, :force => true do |t|
    t.string  "SwxXMLField",    :limit => 50, :null => false
    t.integer "IsConstant",     :limit => 1
    t.string  "ConstantVal",    :limit => 50
    t.integer "IsDateTime",     :limit => 1
    t.string  "DTFormat",       :limit => 50
    t.integer "DTOffsetDays"
    t.string  "DBTableName",    :limit => 50
    t.string  "DBFieldName",    :limit => 50
    t.integer "IsAccountField", :limit => 1
  end

  create_table "CardTypes", :primary_key => "ID", :force => true do |t|
    t.string "BIN",         :limit => 10
    t.string "Description", :limit => 50
  end

  create_table "CheckCodes", :id => false, :force => true do |t|
    t.string "CaseNum",     :limit => 500
    t.string "Description", :limit => 500
    t.string "Code",        :limit => 500
  end

  create_table "CheckReview", :id => false, :force => true do |t|
    t.integer  "Payee_ID"
    t.string   "Routing_Number",  :limit => 50
    t.string   "Account_Number",  :limit => 50
    t.string   "First_Name",      :limit => 50
    t.string   "Last_Name",       :limit => 50
    t.string   "status",          :limit => 10
    t.string   "Company_ID",      :limit => 10
    t.string   "name",            :limit => 200
    t.decimal  "Check_Amount",                   :precision => 10, :scale => 2
    t.datetime "Check_Date"
    t.boolean  "result1",                                                       :default => false
    t.boolean  "result2",                                                       :default => false
    t.boolean  "result3",                                                       :default => false
    t.boolean  "result4",                                                       :default => false
    t.integer  "Transaction_ID",                                                                   :null => false
    t.string   "Block_ID",        :limit => 50,                                                    :null => false
    t.string   "Work_Station_ID", :limit => 50
    t.datetime "CreateDate"
    t.string   "CheckNumber",     :limit => 50
    t.integer  "CustomerID"
    t.boolean  "FingerMatch"
    t.boolean  "result5"
    t.datetime "ModifiedDate"
  end

  create_table "CheckStatus", :primary_key => "Status", :force => true do |t|
    t.string   "Description", :limit => 50
    t.datetime "LockDate"
    t.string   "LockUser",    :limit => 40
    t.string   "Icon",        :limit => 500
  end

  create_table "Checks", :primary_key => "CheckID", :force => true do |t|
    t.integer  "ActID"
    t.string   "ActNbr",              :limit => 16
    t.integer  "CustomerID"
    t.integer  "MakerID"
    t.datetime "Date"
    t.string   "CheckNbr",            :limit => 50
    t.decimal  "Amount"
    t.integer  "Status",              :limit => 2
    t.datetime "CreateDate"
    t.string   "CreateUser",          :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",        :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",            :limit => 40
    t.integer  "Transaction_ID"
    t.string   "Routing_Number",      :limit => 45
    t.string   "CheckGuaranteeCode",  :limit => 20
    t.string   "Check_Approval_Code", :limit => 20
    t.string   "Block_ID",            :limit => 10
    t.decimal  "Check_Fee"
    t.string   "Payor_ID",            :limit => 10
    t.date     "Cashed_Date"
    t.time     "Cashed_Time"
    t.string   "Workstation_ID",      :limit => 10
    t.string   "PositiveCheckFlag",   :limit => 1
    t.string   "PositiveCashedFlag",  :limit => 1
    t.string   "PrintCheck",          :limit => 1
    t.decimal  "NetCash"
    t.decimal  "NetCard"
    t.decimal  "NetCheck"
    t.decimal  "Fee1"
    t.decimal  "Fee2"
    t.decimal  "Fee3"
    t.string   "MakerName",           :limit => 50
  end

  create_table "Companies", :primary_key => "CompanyNumber", :force => true do |t|
    t.string   "CompanyName",        :limit => 50
    t.datetime "CreateDate"
    t.string   "CreateUser",         :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",       :limit => 40
    t.integer  "EntityID"
    t.integer  "Tier"
    t.integer  "BackgroundCheck"
    t.integer  "CustomerActivation"
    t.integer  "USorForeignPhotoID"
    t.integer  "USPhotoID"
    t.integer  "Active"
    t.integer  "DefaultCustGroupID"
    t.integer  "CardID"
  end

  create_table "CompanyAccounts", :id => false, :force => true do |t|
    t.integer "CompanyNbr",                :null => false
    t.string  "PriTranCode", :limit => 10, :null => false
    t.string  "SecTranCode", :limit => 10, :null => false
    t.integer "ActID"
  end

  create_table "CustMenus", :id => false, :force => true do |t|
    t.integer "CustomerID"
    t.string  "ButtonText",    :limit => 50
    t.integer "GroupID"
    t.integer "ParentGroupID"
    t.integer "NavToGroupID"
    t.integer "MenuType"
    t.integer "ButtonOrder"
  end

  create_table "Customer", :primary_key => "CustomerID", :force => true do |t|
    t.integer  "ParentCustID"
    t.string   "Tier",                :limit => 50
    t.datetime "CreateDate"
    t.string   "CreateUser",          :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",        :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",            :limit => 40
    t.integer  "Active",                            :default => 1
    t.boolean  "TranActive",                        :default => false, :null => false
    t.datetime "LastTranLogDate"
    t.integer  "CompanyNumber",                     :default => 0
    t.integer  "DefaultAccount"
    t.integer  "AddPrimaryAccount"
    t.integer  "StartOnMoveScreen"
    t.integer  "LangID"
    t.string   "user_name",           :limit => 40
    t.string   "pwd_hash",            :limit => 50
    t.string   "NameF",               :limit => 50
    t.string   "NameM",               :limit => 50
    t.string   "NameL",               :limit => 50
    t.string   "NameS",               :limit => 50
    t.integer  "user_pin",            :limit => 2
    t.string   "user_salt",           :limit => 50
    t.boolean  "UserLoggedIn"
    t.datetime "UserLastLogin"
    t.integer  "PasswordExpired",     :limit => 1
    t.string   "Email",               :limit => 50
    t.string   "AddressL1",           :limit => 50
    t.string   "AddressL2",           :limit => 50
    t.string   "City",                :limit => 50
    t.string   "State",               :limit => 4
    t.string   "Zip",                 :limit => 10
    t.string   "PhoneHome",           :limit => 50
    t.string   "PhoneWork",           :limit => 50
    t.string   "PhoneMobile",         :limit => 50
    t.string   "SSN",                 :limit => 50
    t.datetime "DOB"
    t.string   "Occupation",          :limit => 50
    t.string   "Race",                :limit => 50
    t.string   "County",              :limit => 50
    t.string   "Registration_Source", :limit => 50
    t.string   "Background_CK_Flag",  :limit => 50
    t.string   "Registration_Flag",   :limit => 50
    t.string   "FingerMatch",         :limit => 1
    t.integer  "LostCardCode"
    t.integer  "Customer_ACK",        :limit => 1
    t.integer  "MessageSMS",          :limit => 1
    t.integer  "MessageEmail",        :limit => 1
    t.integer  "MessageLetter",       :limit => 1
    t.integer  "pwd_needs_change"
    t.integer  "GroupID"
    t.integer  "CurrentPhotoIDID"
    t.integer  "PrimaryACHActID"
    t.boolean  "IsTempUserName"
    t.boolean  "IsTempPassword"
    t.integer  "LangObjID1"
    t.string   "Answer1",             :limit => 50
    t.integer  "LangObjID2"
    t.string   "Answer2",             :limit => 50
    t.string   "Sex",                 :limit => 1
    t.string   "Height",              :limit => 5
    t.string   "Weight",              :limit => 10
    t.string   "EyeColor",            :limit => 10
    t.string   "HairColor",           :limit => 10
    t.string   "LangObjID3",          :limit => 50
    t.string   "Answer3",             :limit => 50
    t.string   "CustomQuestion1",     :limit => 50
    t.string   "CustomQuestion2",     :limit => 50
    t.string   "CustomQuestion3",     :limit => 50
    t.string   "ReviewNeeded",        :limit => 5
    t.integer  "CKtimeout"
  end

  add_index "Customer", ["user_name"], :name => "NonClusteredIndex-20130305-084332"

  create_table "CustomerCards", :primary_key => "CardID", :force => true do |t|
    t.integer  "CustomerID"
    t.string   "PAN",           :limit => 50
    t.string   "CDType",        :limit => 50
    t.boolean  "Loadable"
    t.integer  "ActID"
    t.integer  "CompanyNumber"
    t.datetime "CreateDate"
    t.datetime "ResetDate"
  end

  create_table "CustomerMessage", :primary_key => "CustomerMessageID", :force => true do |t|
    t.integer "MsgType",    :limit => 1,    :default => 0
    t.string  "MsgHeader",  :limit => 50,   :default => ""
    t.string  "MsgBody",    :limit => 1000, :default => ""
    t.string  "MsgFooter",  :limit => 50,   :default => ""
    t.string  "MsgTitle",   :limit => 25,   :default => "Welcome"
    t.string  "ToAddr",     :limit => 500
    t.string  "FromAddr",   :limit => 50
    t.string  "MsgSubject", :limit => 100
  end

  create_table "CustomerPhotoIDs", :primary_key => "ID", :force => true do |t|
    t.integer  "CustomerID"
    t.string   "NameF",       :limit => 50
    t.string   "NameM",       :limit => 50
    t.string   "NameL",       :limit => 50
    t.string   "NameS",       :limit => 50
    t.string   "AddressL1",   :limit => 50
    t.string   "AddressL2",   :limit => 50
    t.string   "City",        :limit => 50
    t.string   "State",       :limit => 4
    t.string   "Zip",         :limit => 10
    t.string   "DLNbr",       :limit => 50
    t.datetime "DLIssueDate"
    t.datetime "DLExpDate"
    t.string   "Height",      :limit => 10
    t.string   "Weight",      :limit => 10
    t.string   "EyeColor",    :limit => 10
    t.string   "HairColor",   :limit => 10
    t.datetime "DOB"
    t.datetime "CreateDate"
    t.integer  "IDTypeNo"
    t.string   "Sex",         :limit => 1
    t.string   "Status",      :limit => 10
    t.integer  "PhotoIDScan"
    t.string   "Barcode",     :limit => 32
    t.string   "Email",       :limit => 50
    t.boolean  "Anonymous",                 :default => false, :null => false
  end

  create_table "DefaultAccounts", :primary_key => "DefaultAccountID", :force => true do |t|
    t.integer "EntityID"
    t.integer "ActTypeID"
    t.string  "DefaultButtonText", :limit => 50
    t.integer "AddIndex",                        :default => 0
    t.integer "AddFlag",           :limit => 1,  :default => 0
    t.decimal "AddFee",                          :default => 0.0
    t.integer "AddGroupID",                      :default => 0
    t.integer "AddParentID",                     :default => 0
    t.integer "MoveIndex",                       :default => 0
    t.integer "MoveFlag",          :limit => 1,  :default => 0
    t.decimal "MoveFee",                         :default => 0.0
    t.integer "MoveGroupID",                     :default => 0
    t.integer "MoveParentID",                    :default => 0
    t.integer "DepositFlag",       :limit => 1,  :default => 0
    t.integer "DefaultFlag",       :limit => 1,  :default => 1
    t.integer "CompanyNumber",                   :default => 0
    t.integer "IsBankAccount",     :limit => 1,  :default => 0
    t.integer "GroupID"
    t.string  "ActNbr",            :limit => 50
  end

  create_table "DevTypes", :id => false, :force => true do |t|
    t.integer "DevType",                   :null => false
    t.string  "description", :limit => 80
  end

  create_table "EZCashQueue", :primary_key => "EZCash_Queue_ID", :force => true do |t|
    t.integer  "WorkstationID"
    t.datetime "CreatedDate"
    t.string   "QueueCode",     :limit => 2
    t.string   "StatusCode",    :limit => 10
    t.string   "Data1",         :limit => 2000
    t.string   "Data2",         :limit => 2000
    t.string   "Data3",         :limit => 2000
    t.integer  "ReturnCode1",   :limit => 2
    t.integer  "ReturnCode2",   :limit => 2
    t.integer  "ReturnCode3",   :limit => 2
    t.integer  "ReturnCode4",   :limit => 2
    t.integer  "CustomerID"
    t.string   "Data4",         :limit => 2000
    t.string   "Data5",         :limit => 2000
  end

  create_table "EZPermissionDesc", :id => false, :force => true do |t|
    t.integer "PermissionID",               :null => false
    t.string  "Description",  :limit => 50
  end

  create_table "Entities", :primary_key => "EntityID", :force => true do |t|
    t.string   "EntityName",         :limit => 50
    t.string   "EntityAddressL1",    :limit => 50
    t.string   "EntityAddressL2",    :limit => 50
    t.string   "EntityCity",         :limit => 50
    t.string   "EntityState",        :limit => 50
    t.string   "EntityZip",          :limit => 10
    t.string   "EntityPhone",        :limit => 15
    t.string   "EntityContactName",  :limit => 50
    t.string   "EntityContactPhone", :limit => 15
    t.datetime "CreateDate"
    t.string   "CreateUser",         :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",       :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",           :limit => 40
    t.integer  "Active",             :limit => 1,  :default => 1
    t.integer  "DestCardID"
    t.integer  "OwningCustomerID"
    t.integer  "DestActID",                        :default => 0
  end

  create_table "EntityAccountTypes", :id => false, :force => true do |t|
    t.integer  "EntityID",                                   :null => false
    t.integer  "AccountTypeID",                              :null => false
    t.string   "RoutingNbr",    :limit => 10
    t.string   "AccountNbr",    :limit => 20
    t.string   "BankName",      :limit => 50
    t.string   "BankAddressL1", :limit => 50
    t.string   "BankAddressL2", :limit => 50
    t.string   "BankCity",      :limit => 50
    t.string   "BankState",     :limit => 50
    t.string   "BankZip",       :limit => 10
    t.datetime "CreateDate"
    t.string   "CreateUser",    :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",  :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",      :limit => 40
    t.integer  "Active",        :limit => 1,  :default => 1
  end

  create_table "ErrorCodes", :force => true do |t|
    t.integer "ErrCode"
    t.string  "ErrText",   :limit => 500
    t.string  "Component", :limit => 100
    t.string  "Action",    :limit => 500
  end

  create_table "FeeDefs", :primary_key => "FeeID", :force => true do |t|
    t.string   "FeeType",     :limit => 5
    t.integer  "CompanyNbr"
    t.integer  "CompanyTier"
    t.integer  "CustomerID"
    t.integer  "CustTGSTier"
    t.string   "PriTranCode", :limit => 5
    t.string   "SecTranCode", :limit => 5
    t.integer  "ProcessorID"
    t.decimal  "RangeLow",                   :precision => 10, :scale => 2
    t.decimal  "Rangehigh",                  :precision => 10, :scale => 2
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.decimal  "FlatFee",                    :precision => 6,  :scale => 2
    t.float    "PercentFee",  :limit => 53
    t.string   "Description", :limit => 100
    t.integer  "GLMod"
    t.integer  "CreditsCust"
  end

  create_table "FieldDescriptions", :id => false, :force => true do |t|
    t.string "TableName",        :limit => 50
    t.string "FieldName",        :limit => 50
    t.string "FieldDescription", :limit => 500
  end

  create_table "Fields", :id => false, :force => true do |t|
    t.integer "ScreenID",                                       :null => false
    t.integer "FieldID",                                        :null => false
    t.string  "FieldName",        :limit => 50
    t.string  "FieldDescription", :limit => 100
    t.integer "Active",           :limit => 1,   :default => 1
  end

  create_table "GroupCompanies", :id => false, :force => true do |t|
    t.integer  "GroupID",                                    :null => false
    t.integer  "CompanyNumber",                              :null => false
    t.integer  "Active",        :limit => 1,  :default => 1
    t.datetime "CreateDate"
    t.string   "CreateUser",    :limit => 40
  end

  create_table "GroupFields", :id => false, :force => true do |t|
    t.integer "GroupID",                                  :null => false
    t.integer "ScreenID",                                 :null => false
    t.integer "FieldID",                                  :null => false
    t.boolean "Read",                  :default => false, :null => false
    t.boolean "Write",                 :default => false, :null => false
    t.integer "Active",   :limit => 1, :default => 1
  end

  create_table "GroupPermissions", :id => false, :force => true do |t|
    t.integer "GroupID",                         :null => false
    t.integer "PermissionID",                    :null => false
    t.boolean "Enabled",      :default => false, :null => false
  end

  create_table "GroupScreens", :id => false, :force => true do |t|
    t.integer "GroupID",                                  :null => false
    t.integer "ScreenID",                                 :null => false
    t.boolean "Read",                  :default => false, :null => false
    t.boolean "Write",                 :default => false, :null => false
    t.integer "Active",   :limit => 1, :default => 1
  end

  create_table "Groups", :primary_key => "GroupID", :force => true do |t|
    t.string  "GroupDescription",  :limit => 50
    t.integer "Active",            :limit => 1,  :default => 1
    t.integer "ParentGroupID"
    t.boolean "IsCustomer",                      :default => false
    t.integer "AddPrimaryAccount"
    t.integer "StartOnMoveScreen"
  end

  create_table "HypercomTemplates", :id => false, :force => true do |t|
    t.string  "TemplateID",   :limit => 50, :null => false
    t.string  "ScreenName",   :limit => 50
    t.integer "Label1"
    t.integer "Label2"
    t.integer "Label3"
    t.integer "Label4"
    t.integer "Button1"
    t.integer "Button2"
    t.integer "Button3"
    t.integer "Button4"
    t.integer "Button5"
    t.integer "Button6"
    t.string  "JustifyFlags", :limit => 50
  end

  create_table "IDTypes", :primary_key => "IDTypeNo", :force => true do |t|
    t.string "IDType",  :limit => 100
    t.string "ID_Code", :limit => 10
  end

  create_table "Institution", :id => false, :force => true do |t|
    t.integer "InstitutionID",                 :null => false
    t.string  "VendorAcctNbr",  :limit => 20
    t.string  "Name",           :limit => 50
    t.string  "Addr1",          :limit => 100
    t.string  "Addr2",          :limit => 100
    t.string  "City",           :limit => 50
    t.string  "State",          :limit => 25
    t.string  "Zip",            :limit => 10
    t.string  "RoutingNbr",     :limit => 20
    t.string  "FundingAcctNbr", :limit => 20
  end

  create_table "Interfaces", :id => false, :force => true do |t|
    t.string  "InterfaceID",   :limit => 10,  :null => false
    t.string  "Description",   :limit => 100
    t.string  "HostName",      :limit => 50
    t.integer "PortNbr"
    t.string  "HeaderType",    :limit => 1
    t.integer "HeaderLen"
    t.string  "HeaderOrder",   :limit => 1
    t.integer "DefaultFlag"
    t.integer "InterfaceType"
    t.integer "IsTCPClient"
  end

  create_table "JournalLog", :primary_key => "Journal_num", :force => true do |t|
    t.integer  "Customer_ID"
    t.integer  "Workstation_ID"
    t.integer  "Transaction_ID"
    t.string   "Block_ID",       :limit => 10
    t.datetime "Journal_Date"
    t.string   "Incident_Code",  :limit => 3
    t.string   "Application",    :limit => 10
    t.decimal  "Amount",                         :precision => 10, :scale => 2
    t.string   "Description",    :limit => 30
    t.string   "Data",           :limit => 1000
  end

  create_table "JpeggerUserConfig", :id => false, :force => true do |t|
    t.integer "GroupID",                                       :null => false
    t.string  "EventCode",    :limit => 25,                    :null => false
    t.boolean "CaptureFlag",                :default => false, :null => false
    t.boolean "DisplayFlag",                :default => false, :null => false
    t.integer "DisplayOrder"
  end

  create_table "KioskSettings", :force => true do |t|
    t.string  "name",          :limit => 50
    t.string  "value",         :limit => 500
    t.integer "workstationid"
  end

  create_table "LangObjText", :id => false, :force => true do |t|
    t.integer "LangObjID",                  :null => false
    t.integer "LangID",                     :null => false
    t.string  "LangObjText", :limit => 500
  end

  create_table "LanguageObjects", :primary_key => "LangObjID", :force => true do |t|
    t.string "LangObjName",   :limit => 50
    t.string "LangObjScreen", :limit => 50
    t.string "LangObjLabel",  :limit => 100
  end

  create_table "Languages", :primary_key => "LangID", :force => true do |t|
    t.string  "LangName", :limit => 50
    t.integer "Active",   :limit => 1,  :default => 1
  end

  create_table "OCRConfidence", :id => false, :force => true do |t|
    t.string  "FormID",    :limit => 25,                               :null => false
    t.string  "ScanField", :limit => 25,                               :null => false
    t.decimal "MinConf",                 :precision => 2, :scale => 2
  end

  create_table "OpCodesMap", :id => false, :force => true do |t|
    t.string  "AuthID",     :limit => 10
    t.string  "KeySeq",     :limit => 20
    t.string  "TranCode",   :limit => 10
    t.integer "CassetteID"
    t.string  "SwxPriTran", :limit => 50
    t.string  "SwxSecTran", :limit => 50
    t.string  "SwxSecRev",  :limit => 50
  end

  create_table "PermissionDesc", :primary_key => "PermissionID", :force => true do |t|
    t.string  "Description", :limit => 50
    t.integer "Active",      :limit => 1
  end

  create_table "PrintRecord", :primary_key => "PrintRecordID", :force => true do |t|
    t.datetime "PrintDate"
    t.datetime "CurrentDate"
    t.integer  "PrintStatus",                :default => 0
    t.integer  "CustomerID",                 :default => 0
    t.string   "MessageType", :limit => 4,   :default => ""
    t.string   "Message",     :limit => 320, :default => ""
  end

  create_table "QueueInput", :id => false, :force => true do |t|
    t.string  "QueueCmd",     :limit => 50
    t.string  "TranCode",     :limit => 50
    t.string  "QueueField",   :limit => 50
    t.string  "EZCTranField", :limit => 50
    t.integer "IsConstant",   :limit => 1
  end

  create_table "QueueOutput", :id => false, :force => true do |t|
    t.string  "QueueCmd",     :limit => 50
    t.string  "EZCFieldName", :limit => 50
    t.string  "QueueField",   :limit => 50
    t.integer "IsConstant",   :limit => 1
    t.string  "EZCTableName", :limit => 50
    t.integer "MaxLength"
  end

  create_table "RegTestData", :force => true do |t|
    t.string  "key",      :limit => 500
    t.string  "value",    :limit => 500
    t.integer "status"
    t.integer "CaseNum"
    t.string  "CaseCode", :limit => 12
    t.integer "refNum"
  end

  create_table "RegistrationReview", :primary_key => "Scan_ID", :force => true do |t|
    t.integer  "GroupID",                                          :default => 0
    t.integer  "CustomerID"
    t.string   "First_name",                        :limit => 50
    t.string   "Last_Name",                         :limit => 50
    t.datetime "DOB"
    t.string   "Middle_Name",                       :limit => 50
    t.string   "State_Code",                        :limit => 10
    t.integer  "ID_Type",                                          :default => 0
    t.datetime "Issue_Date"
    t.datetime "Expiration_Date"
    t.string   "PHOTO_ID",                          :limit => 50
    t.string   "Address1",                          :limit => 50
    t.string   "Address2",                          :limit => 50
    t.string   "City",                              :limit => 50
    t.string   "Zip",                               :limit => 50
    t.string   "Height",                            :limit => 50
    t.string   "Weight",                            :limit => 50
    t.string   "Eye_Color",                         :limit => 50
    t.string   "Hair_Color",                        :limit => 50
    t.string   "User_Name",                         :limit => 50
    t.string   "Status",                            :limit => 50
    t.boolean  "CustomerImageVerify",                              :default => false
    t.boolean  "PhotoIDMatches",                                   :default => false
    t.datetime "CreateDate"
    t.string   "SSN",                               :limit => 50
    t.string   "Sex",                               :limit => 50,  :default => "M"
    t.string   "ReviewType",                        :limit => 50
    t.string   "Background_CK_Flag",                :limit => 50,  :default => "N"
    t.string   "PAN",                               :limit => 100
    t.boolean  "PhotoIDAltered"
    t.string   "PhoneMobile",                       :limit => 50
    t.integer  "LangIDPref"
    t.boolean  "IsPID_Dob_St_matches_photoIdData"
    t.string   "CardType",                          :limit => 50
    t.string   "FingerMatch",                       :limit => 1
    t.integer  "Match"
    t.boolean  "IsCustrPhotosMatchesExtCustPhotos"
  end

  create_table "RoleDescription", :id => false, :force => true do |t|
    t.integer "RoleID",                        :null => false
    t.string  "RoleDescription", :limit => 50
  end

  create_table "RolePermissions", :id => false, :force => true do |t|
    t.integer "RoleID",       :null => false
    t.integer "PermissionID", :null => false
    t.integer "Enabled"
  end

  create_table "ScreenHelp", :id => false, :force => true do |t|
    t.integer "ScreenID", :null => false
    t.integer "LangID",   :null => false
    t.text    "HelpText"
  end

  create_table "Screens", :primary_key => "ScreenID", :force => true do |t|
    t.string  "ScreenName",        :limit => 50
    t.string  "ScreenDescription", :limit => 100
    t.integer "Active",            :limit => 1,   :default => 1
    t.integer "ParentId"
    t.integer "OrderId"
    t.string  "URL",               :limit => 250
  end

  create_table "SystemSettings", :id => false, :force => true do |t|
    t.string "Setting",     :limit => 50,  :null => false
    t.string "Value",       :limit => 100
    t.string "Description", :limit => 200
  end

  create_table "TUDUserAuth", :id => false, :force => true do |t|
    t.string "UserName", :limit => 50
    t.string "UserHash", :limit => 50
  end

  create_table "TestScrapDragon", :force => true do |t|
    t.string "Casenum", :limit => 500
    t.string "Key",     :limit => 500
    t.string "Value",   :limit => 500
    t.string "Status",  :limit => 50
  end

  create_table "TranBlockDetails", :primary_key => "TranBlockDetailID", :force => true do |t|
    t.integer "CustomerID",                 :null => false
    t.integer "AddIndex"
    t.integer "MoveIndex"
    t.integer "ActID"
    t.decimal "Fee"
    t.decimal "Amount"
    t.integer "AcctIDType"
    t.integer "Status",     :default => 14
  end

  create_table "TranGroup", :id => false, :force => true do |t|
    t.integer  "TranGroupID",                :null => false
    t.integer  "TranID",                     :null => false
    t.integer  "CustomerID"
    t.integer  "DeviceID"
    t.datetime "CreateDate"
    t.string   "CreateUser",   :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser", :limit => 40
    t.datetime "LockDate"
    t.string   "LockUser",     :limit => 40
  end

  create_table "TransactionBlock", :id => false, :force => true do |t|
    t.integer  "CustomerID", :null => false
    t.datetime "CreateDate"
    t.integer  "DeviceID"
    t.integer  "State"
  end

  create_table "TransactionTypes", :primary_key => "TransactionTypeID", :force => true do |t|
    t.string  "PrimaryTranCode",   :limit => 10
    t.string  "SecondaryTranCode", :limit => 10
    t.string  "Description",       :limit => 500
    t.string  "Description2",      :limit => 500
    t.string  "Acct1Icon",         :limit => 50
    t.string  "Acct2Icon",         :limit => 50
    t.integer "CustIsDest"
  end

  create_table "TranslationsData", :id => false, :force => true do |t|
    t.string "ObjName"
    t.string "ScreenName"
    t.string "Label"
    t.string "English"
    t.string "French"
    t.string "German"
    t.string "Italian"
    t.string "Portuguese"
    t.string "Spanish"
    t.string "Russian"
    t.string "Chinese"
    t.string "Hindi"
    t.string "Arabic"
    t.string "Japanese"
    t.string "Korean"
    t.string "Vietnamese"
    t.string "Lables"
  end

  create_table "UserGroups", :id => false, :force => true do |t|
    t.integer "GroupID",                              :null => false
    t.string  "UserID",  :limit => 40,                :null => false
    t.integer "Active",  :limit => 1,  :default => 1
  end

  add_index "UserGroups", ["UserID"], :name => "UserID_unique", :unique => true

  create_table "UserRoleDesc", :id => false, :force => true do |t|
    t.integer "UserRole"
    t.string  "Description", :limit => 50
  end

  create_table "ValueTable", :id => false, :force => true do |t|
    t.string  "ValueID",       :limit => 10,                :null => false
    t.string  "ValueDesc",     :limit => 50
    t.integer "Value",                       :default => 0
    t.integer "CompanyNumber"
  end

  create_table "VendorPayables", :id => false, :force => true do |t|
    t.string  "CustID",     :limit => 50, :null => false
    t.integer "CompanyNbr",               :null => false
    t.decimal "Balance"
  end

  create_table "WorkstationCameras", :id => false, :force => true do |t|
    t.integer "CompanyID",                   :null => false
    t.integer "WorkstationID",               :null => false
    t.string  "EventCode",     :limit => 25, :null => false
    t.string  "CameraName",    :limit => 50
    t.string  "JpeggerHost",   :limit => 50
    t.integer "JpeggerPort"
    t.integer "WaitRefresh"
  end

  create_table "Workstation_Device", :id => false, :force => true do |t|
    t.integer "WorkstationID",               :null => false
    t.integer "PinPadID"
    t.integer "ATMDevID"
    t.integer "CompanyNbr"
    t.string  "IPAddr",        :limit => 15, :null => false
  end

  create_table "XMLFieldMap", :id => false, :force => true do |t|
    t.string  "XMLField",     :limit => 50
    t.integer "IsConstant",   :limit => 1
    t.string  "ConstantVal",  :limit => 100
    t.integer "IsDateTime",   :limit => 1
    t.string  "DTFormat",     :limit => 50
    t.integer "DTOffsetDays"
    t.string  "DBTableName",  :limit => 50
    t.string  "DBFieldName",  :limit => 50
    t.integer "IsEncrypted",  :limit => 1
    t.integer "InFlag",       :limit => 1
    t.integer "OutFlag",      :limit => 1
    t.string  "XMLSection",   :limit => 50
    t.string  "PriTranCode",  :limit => 50
    t.string  "SecTranCode",  :limit => 50
    t.integer "PadLength"
    t.string  "PadChar",      :limit => 1
    t.integer "IsMoney",      :limit => 1
  end

  add_index "XMLFieldMap", ["XMLField"], :name => "XMLName"

  create_table "auth_params", :id => false, :force => true do |t|
    t.string  "param_name",  :limit => 20, :null => false
    t.string  "description", :limit => 80
    t.integer "active_flag"
    t.integer "dev_id",                    :null => false
    t.string  "val1_desc",   :limit => 40
    t.float   "val1",        :limit => 53
    t.string  "val2_desc",   :limit => 40
    t.float   "val2",        :limit => 53
    t.string  "val3_desc",   :limit => 40
    t.float   "val3",        :limit => 53
    t.integer "clone_flag"
  end

  add_index "auth_params", ["param_name", "dev_id", "val1"], :name => "ap_pri", :unique => true

  create_table "backouts", :force => true do |t|
    t.datetime "DateTime"
    t.integer  "ScanID"
    t.boolean  "Status"
    t.string   "KeyName"
    t.string   "KeyValue"
    t.string   "Table"
    t.string   "DatabaseName"
    t.integer  "Operation"
    t.string   "FieldName"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bank_ids", :id => false, :force => true do |t|
    t.decimal "bank_id_nbr",               :precision => 12, :scale => 2, :null => false
    t.integer "bank_id_len"
    t.string  "description", :limit => 80
  end

  create_table "bill_counts", :id => false, :force => true do |t|
    t.integer "host_start_count"
    t.integer "host_cycle_count"
    t.integer "dev_start_count"
    t.integer "dev_cycle_count"
    t.integer "dev_divert_count"
    t.integer "added_count"
    t.integer "old_added"
    t.integer "dev_id"
    t.integer "cassette_nbr"
    t.integer "cassette_id"
    t.integer "status"
  end

  add_index "bill_counts", ["dev_id", "cassette_id"], :name => "bill_counts_pri", :unique => true

  create_table "bill_hist", :id => false, :force => true do |t|
    t.datetime "cut_dt"
    t.integer  "old_start"
    t.integer  "old_term_cyc"
    t.integer  "old_host_cyc"
    t.integer  "added"
    t.integer  "replaced"
    t.integer  "new_start"
    t.integer  "cassette_id"
    t.integer  "dev_id"
    t.integer  "old_added"
    t.string   "user_name",    :limit => 25
    t.float    "denomination", :limit => 53
  end

  add_index "bill_hist", ["cut_dt"], :name => "bill_hist_dt"

  create_table "card_field_desc", :id => false, :force => true do |t|
    t.string "field_name", :limit => 30, :null => false
    t.string "short_desc", :limit => 15
  end

  create_table "cards", :primary_key => "card_seq", :force => true do |t|
    t.decimal  "bank_id_nbr",                      :precision => 12, :scale => 2
    t.string   "card_nbr",           :limit => 15
    t.integer  "dev_id"
    t.decimal  "card_amt",                         :precision => 12, :scale => 2
    t.decimal  "avail_amt",                        :precision => 12, :scale => 2
    t.string   "card_status",        :limit => 2
    t.datetime "issued_date"
    t.datetime "last_activity_date"
    t.string   "receipt_nbr",        :limit => 10
    t.string   "barcodeHash",        :limit => 32
    t.string   "bank_code",          :limit => 10
    t.integer  "cust_id"
    t.integer  "tran_id"
  end

  add_index "cards", ["avail_amt"], :name => "cards_avail"
  add_index "cards", ["barcodeHash"], :name => "cards_hash"
  add_index "cards", ["card_nbr"], :name => "ClusteredIndex-20130508-115847"
  add_index "cards", ["issued_date"], :name => "cards_issued"

  create_table "cardsource", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "PAN",    :limit => 50
    t.datetime "EXP"
    t.integer  "status"
  end

  create_table "change_log", :id => false, :force => true do |t|
    t.string   "user_name",   :limit => 40
    t.datetime "change_time"
    t.string   "change_type", :limit => 1
    t.string   "table_name",  :limit => 20
    t.string   "field_name",  :limit => 20
    t.string   "old_value",   :limit => 100
    t.string   "new_value",   :limit => 100
  end

  create_table "denoms", :id => false, :force => true do |t|
    t.float   "denomination", :limit => 53
    t.integer "dev_id",                     :null => false
    t.integer "cassette_nbr"
    t.integer "cassette_id",                :null => false
  end

  add_index "denoms", ["dev_id", "cassette_id"], :name => "denoms_pri", :unique => true

  create_table "dev_statuses", :id => false, :force => true do |t|
    t.integer  "dev_id"
    t.datetime "date_time"
    t.string   "status",     :limit => 4
    t.string   "raw_status", :limit => 80
  end

  add_index "dev_statuses", ["dev_id", "date_time"], :name => "dev_status_dt"

  create_table "devices", :id => false, :force => true do |t|
    t.integer  "dev_id",                                                         :null => false
    t.integer  "online"
    t.string   "description",       :limit => 40
    t.string   "encryption_key",    :limit => 16
    t.string   "welcome1",          :limit => 80
    t.string   "welcome2",          :limit => 80
    t.string   "jpg_bank_code",     :limit => 10
    t.string   "load_file",         :limit => 30
    t.string   "receipt_file",      :limit => 30
    t.string   "ip_address",        :limit => 50
    t.integer  "coin_dev_id"
    t.string   "camera_group",      :limit => 30
    t.integer  "use_jpegger"
    t.string   "jpegger_addr",      :limit => 30
    t.integer  "jpegger_port"
    t.string   "jpegger_location",  :limit => 25
    t.integer  "retries"
    t.integer  "round_to"
    t.integer  "round_method"
    t.decimal  "maxcoin",                          :precision => 5, :scale => 2
    t.string   "fitness",           :limit => 100
    t.datetime "fitness_dt"
    t.string   "config",            :limit => 100
    t.datetime "config_dt"
    t.string   "supplies",          :limit => 100
    t.datetime "supplies_dt"
    t.integer  "comm_port"
    t.integer  "baud_rate"
    t.integer  "advanced_ndc"
    t.integer  "caution_flag"
    t.string   "monitor_group",     :limit => 20
    t.string   "monitor_site",      :limit => 20
    t.string   "dev_group",         :limit => 20
    t.string   "dev_site",          :limit => 20
    t.integer  "bills_in_bundle"
    t.integer  "TranID"
    t.integer  "DispenseByAmtFlag"
    t.string   "TMK_LMK",           :limit => 50
    t.string   "TPK_LMK",           :limit => 50
    t.integer  "PINEnabled"
    t.integer  "inactive_flag"
    t.integer  "CompanyNbr"
    t.integer  "VendorID"
    t.integer  "InstitutionID"
    t.string   "VendorPAN",         :limit => 20
    t.string   "BDK_LMK",           :limit => 50
    t.integer  "uses_DUKPT",        :limit => 1
    t.integer  "dev_typeID"
    t.integer  "isTCPClient"
    t.integer  "PortNbr"
  end

  create_table "error_desc", :id => false, :force => true do |t|
    t.integer "error_code",               :null => false
    t.string  "short_desc", :limit => 80
    t.text    "long_desc"
  end

  create_table "password_rules", :id => false, :force => true do |t|
    t.integer "pwd_expires_days"
  end

  create_table "status_desc", :id => false, :force => true do |t|
    t.string  "status",       :limit => 4,  :null => false
    t.string  "short_desc",   :limit => 80
    t.integer "caution_flag"
    t.integer "alert_flag"
  end

  create_table "sysdiagrams", :primary_key => "diagram_id", :force => true do |t|
    t.string  "name",         :limit => 128
    t.integer "principal_id"
    t.integer "version"
    t.binary  "definition"
  end

  add_index "sysdiagrams", ["principal_id", "name"], :name => "UK_principal_name", :unique => true

  create_table "tran_field_desc", :id => false, :force => true do |t|
    t.string "field_name", :limit => 30, :null => false
    t.string "short_desc", :limit => 15
  end

  create_table "tran_status_desc", :id => false, :force => true do |t|
    t.integer "tran_status",                :null => false
    t.string  "short_desc",  :limit => 80
    t.string  "long_desc"
    t.string  "icon",        :limit => 500
  end

  create_table "transactions", :primary_key => "tranID", :force => true do |t|
    t.datetime "date_time"
    t.integer  "dev_id"
    t.integer  "custID"
    t.integer  "tran_status"
    t.integer  "error_code"
    t.string   "tran_code",       :limit => 4
    t.string   "card_nbr",        :limit => 20
    t.string   "receipt_nbr",     :limit => 10
    t.decimal  "amt_req",                       :precision => 12, :scale => 2
    t.decimal  "amt_auth",                      :precision => 12, :scale => 2
    t.integer  "cassette_1_disp"
    t.integer  "cassette_2_disp"
    t.integer  "cassette_3_disp"
    t.integer  "cassette_4_disp"
    t.integer  "cassette_5_disp"
    t.integer  "cassette_6_disp"
    t.string   "track2",          :limit => 50
    t.decimal  "bank_id_nbr",                   :precision => 12, :scale => 2
    t.decimal  "coin_disp",                     :precision => 5,  :scale => 2
    t.integer  "coin_1_disp"
    t.integer  "coin_2_disp"
    t.integer  "coin_3_disp"
    t.integer  "coin_4_disp"
    t.integer  "coin_5_disp"
    t.integer  "coin_6_disp"
    t.decimal  "cashBalance"
    t.integer  "ActID"
    t.datetime "CreateDate"
    t.string   "CreateUser",      :limit => 40
    t.datetime "ModifiedDate"
    t.string   "ModifiedUser",    :limit => 40
    t.integer  "card_seq"
    t.string   "from_acct_nbr",   :limit => 20
    t.string   "to_acct_nbr",     :limit => 20
    t.string   "authID",          :limit => 4
    t.string   "sec_tran_code",   :limit => 4
    t.integer  "BlockID"
    t.integer  "AddFlag",         :limit => 1
    t.integer  "MoveFlag",        :limit => 1
    t.string   "Description",     :limit => 50
    t.decimal  "ChpFee"
  end

  add_index "transactions", ["BlockID"], :name => "transactions_block"
  add_index "transactions", ["tranID"], :name => "transactions_seq", :unique => true

  create_table "user_roles", :id => false, :force => true do |t|
    t.string   "user_name",        :limit => 40, :null => false
    t.string   "pwd_hash",         :limit => 40
    t.integer  "user_role_index"
    t.integer  "pwd_needs_change"
    t.datetime "pwd_last_changed"
    t.integer  "win_auth"
    t.string   "dev_group",        :limit => 20
    t.string   "dev_site",         :limit => 20
    t.integer  "disable_add"
  end

end
