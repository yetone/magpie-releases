class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2018/magpie-cli-darwin-arm64"
      sha256 "c4ba663e79efa65c8fe30804d0567f42d22fd00499aef5acef6cefa8c96b31df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2018/magpie-cli-darwin-amd64"
      sha256 "24b775046609f3805e34efad2e6bb93500e5a62a8dd5e5e19fcd482476f0b7fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2018/magpie-cli-linux-arm64"
      sha256 "d3819fb8580a511588a12048fd721fe3d98c932f8dcbca136f6727efdd942e6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2018/magpie-cli-linux-amd64"
      sha256 "8724635e63bfab98e4318df8f9f5f001ce9a448da66ac7e7cb0b166151df109c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
