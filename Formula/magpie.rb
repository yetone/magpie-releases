class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4022/magpie-cli-darwin-arm64"
      sha256 "c249181ca5a6bae31977302cf4157e0c97ceb2e53a9210a1ad83179289a51584"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4022/magpie-cli-darwin-amd64"
      sha256 "a42df334cac4d1f570333143fab6aedbed13b5fbcc90e7eafd2358ff6983bbe4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4022/magpie-cli-linux-arm64"
      sha256 "3f74f48d918a31882bba756fbb9629810fd37183966430a4d36554544cf3f758"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4022/magpie-cli-linux-amd64"
      sha256 "46e96145537e52d39d286b17dee4b1366c96b6d9e6a287db45fc802da9128dd0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
