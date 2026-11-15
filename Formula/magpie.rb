class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4225/magpie-cli-darwin-arm64"
      sha256 "94f24e6566e751f19b2835eebeeaff00128dfa659246353e1807b29c2ea30395"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4225/magpie-cli-darwin-amd64"
      sha256 "6cfb4e94441b7694c776336d99c9a57865644a3447e5a8a6dd2566f0b8a5ed8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4225/magpie-cli-linux-arm64"
      sha256 "d3707466998ea063ed1d7dba597b90f72ef44e813da925e498469fac9071e47a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4225/magpie-cli-linux-amd64"
      sha256 "c63fac0ac540d140e5ff0abd810a79d9677960eec774699075c1941ed766156d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
