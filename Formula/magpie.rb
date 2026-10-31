class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2287/magpie-cli-darwin-arm64"
      sha256 "27d7c8b1fb245dc9bd6ad0e9012d47ecfb77d8178d0a16560bf944013d7e6fae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2287/magpie-cli-darwin-amd64"
      sha256 "ff5ef4249d49708f0aafe864d0547e8b462706d0800299c5243f15646fd42035"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2287/magpie-cli-linux-arm64"
      sha256 "9769e19c63a0a02fa1f14950419a4efea74cadfe4bacd8e106da1b96d56e026e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2287/magpie-cli-linux-amd64"
      sha256 "d1193fa49269489f25c70136771b40e1b64f3b5bcd13461e9a340c98d4263505"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
