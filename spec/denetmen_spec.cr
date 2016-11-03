require "./spec_helper"

describe Denetmen do
  it "email test" do
    "info@burakdemirtas.org".email?.should eq(true)
    "info@crystal-lang.com".email?.should eq(true)
    "test@mail.co".email?.should eq(true)
  end
  it "domain test" do
    "burakdemirtas.org".domain?.should eq(true)
  end
  it "url test" do
    "https://crystal-lang.com/".url?.should eq(true)
    "https://crystal-lang.com/api/".url?.should eq(true)
    "https://crystal-lang.org/docs/overview/http_server.html".url?.should eq(true)
    "https://crystal-lang.org/?page=demo&id=17".url?.should eq(true)
  end
  it "negative number test" do
    (-5.5423).negative?.should eq(true)
  end
  it "positive number test" do
    (17).positive?.should eq(true)
  end
  it "zero test" do
    (0).zero?.should eq(true)
    (10/5 - 2).zero?.should eq(true)
  end
  it "divisibility test" do
    (10).div?(5).should eq(true)
  end
  it "alphabetic test" do
    "WeLoveCrystal".alpha?.should eq(true)
    "İzniBurakDemirtaş".alpha?("tr-TR").should eq(true)
  end
  it "alphanumeric test" do
    "Burak17".alphanum?.should eq(true)
    "İzni17Burak25Demirtaş".alphanum?("tr-TR").should eq(true)
  end
  it "numeric test" do
    "789716398719378213".numeric?.should eq(true)
    "a79837129879".numeric?.should eq(false)
  end
  it "lower case test" do
    "izniburak".lower?.should eq(true)
    "Crystal".lower?.should eq(false)
  end
  it "upper case test" do
    "BURAK".upper?.should eq(true)
    "CRySTaL".upper?.should eq(false)
  end
  it "hex color test" do
    "#f0f".hex_color?.should eq(true)
    "#a1b2c3".hex_color?.should eq(true)
  end
  it "hexa decimal test" do
    "0x17b".hex?.should eq(true)
    "0acdadecf822eeff32aca58".hex?.should eq(true)
    "8DABF30C".hex?.should eq(true)
  end
  it "phone test" do
    "5066072221".phone?("tr-TR").should eq(true)
    "05066072221".phone?("tr-TR").should eq(true)
    "+905066072221".phone?("tr-TR").should eq(true)
  end
  it "time string test" do
    "13:45:30".time_string?.should eq(true)
  end
  it "base64 code test" do
    "d2UgbG92ZSBjcnlzdGFsIQ==".base64?.should eq(true)
  end
  it "md5 code test" do
    "39109a5bb10ccb7aff1313d369804b74".md5?.should eq(true)
  end
end
