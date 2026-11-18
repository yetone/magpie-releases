class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4501/magpie-cli-darwin-arm64"
      sha256 "861c6dd4621158986fc21496e13d19045037ce4c5f38e81391cfcaefd0234b4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4501/magpie-cli-darwin-amd64"
      sha256 "1006a9be7ed9cfe02b5c10ea87c298b8e16818c743aa3f35e0f09d132e2aa850"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4501/magpie-cli-linux-arm64"
      sha256 "cc7376f2414967d504d2b50ff94e123bd8e7058e513168d172db64ede59e9090"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4501/magpie-cli-linux-amd64"
      sha256 "2567f3d9c5c282fd586c161874d007379b6a0cf043c973fe4df07032ff617721"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
