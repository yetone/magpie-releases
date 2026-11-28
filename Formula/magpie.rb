class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4987/magpie-cli-darwin-arm64"
      sha256 "65186f947b0954d36787294bf740e2eaf625b8cb3ab9762b88b63e1bf372f258"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4987/magpie-cli-darwin-amd64"
      sha256 "fb8334b8c4aa9ef6abd73091294c0992207d6debb024c82e24d1310ddda23701"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4987/magpie-cli-linux-arm64"
      sha256 "dc55a40c4837a7cb689e6349bbb0571f7b740a34b91a30c86b823ac99fd5ee29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4987/magpie-cli-linux-amd64"
      sha256 "5b4a098dcb6231bb307e1dadf7eeeb41ec186d19c5ecf165df1c9664da0fd8b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
