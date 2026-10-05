class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1059/magpie-cli-darwin-arm64"
      sha256 "0773d23f1f283e1d3e3912961d9799a1987ddafd97e0672e0a87311cec9ceec1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1059/magpie-cli-darwin-amd64"
      sha256 "70c52097c32ecebde84abe12114105866a0bf5e0d346cf3096b1e472b8cb5d89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1059/magpie-cli-linux-arm64"
      sha256 "a967533ed255ae268fe06064074aca1a4c04e6e18fe432f6b9db57732e2cf08a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1059/magpie-cli-linux-amd64"
      sha256 "ce35903f10b8263d46804ff02ec2ca2651da138454497b08519fdf7040b42439"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
