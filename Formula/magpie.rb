class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2017/magpie-cli-darwin-arm64"
      sha256 "17dee7ec09d6219d9f115c65782cbfa3c000ac1525e69e1d71eb60ce593e5c35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2017/magpie-cli-darwin-amd64"
      sha256 "79d02c13deb5238edc8e05f7be82953fe4d66be117d67862476c22887d427f81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2017/magpie-cli-linux-arm64"
      sha256 "8ad8dc2b8e9ffba364fdc7e6ae559287954e4003fc5be1f02188ba6429c76230"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2017/magpie-cli-linux-amd64"
      sha256 "4b9bd8f589a3a9a083c9d2ef4a0ecdc55c8a779371df07adcb8ccd4cb3554082"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
