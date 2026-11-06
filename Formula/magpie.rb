class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3096/magpie-cli-darwin-arm64"
      sha256 "dd901bec79bd64703b671bfbe0ec8b80cb85b5d3ef9ff23a03f7c756cb74a754"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3096/magpie-cli-darwin-amd64"
      sha256 "138475f2fda034c6315e849cea5acd5e250353adb7a23f25e98fb9c3c210f79b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3096/magpie-cli-linux-arm64"
      sha256 "34814d08798563aeb03de4ec9174b0c7f24b495903b33732618e4fc071079506"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3096/magpie-cli-linux-amd64"
      sha256 "fe95e4df62fc20639930722509e2ef6eaf584d58eef6b926d70dea4b567f2760"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
