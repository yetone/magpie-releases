class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4608/magpie-cli-darwin-arm64"
      sha256 "202ddd9ba415770fe2e7634c325ca1094f3610771cc158a280c44c9c394bd99a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4608/magpie-cli-darwin-amd64"
      sha256 "9e84b756cd43be0c65bc3240523ed63d8ea8a023e0c44f99fbdda9c2a2fadb53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4608/magpie-cli-linux-arm64"
      sha256 "ccd878ea3fb08ee4a4faab9cee1d1c7a3a283dac0905533b4fb6a81e27c7ee2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4608/magpie-cli-linux-amd64"
      sha256 "963326520bcc6a1592443f5575f6efaf67e0799a210418aac284dfca6e2dde01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
