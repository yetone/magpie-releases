class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2437/magpie-cli-darwin-arm64"
      sha256 "5768171526401cb35c1ffe96be0bfed256142caba38cc60404d61a4af489c8b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2437/magpie-cli-darwin-amd64"
      sha256 "d1da35fbdc75833e425655a5f598cbf92f9fe12e79ce3e87f9564a52e53aa8ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2437/magpie-cli-linux-arm64"
      sha256 "81603019e29280a5e991fabce34a9f5ca6174171ffceb51688040d3605956f97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2437/magpie-cli-linux-amd64"
      sha256 "fb9909484c424fa87eae958009907adb2767821d4934fc452a2266d989294783"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
