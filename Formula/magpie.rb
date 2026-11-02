class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2685/magpie-cli-darwin-arm64"
      sha256 "bf60784f667f76443f5e857e8adf34a60621d2ce898ff2f05d5dd9472e9f3b48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2685/magpie-cli-darwin-amd64"
      sha256 "c2fef88addc8791a88036b78aadd731bb834ba53ec0a97bb869f63dc46c5c4b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2685/magpie-cli-linux-arm64"
      sha256 "9cace96b65a2bfe617be245670ee098c82b02e64c7cb7331820623f1fed7e46d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2685/magpie-cli-linux-amd64"
      sha256 "58482a5f0f0ac78b8845fb29767ca0893c7e22c10440b8c6b4a8e63222e59672"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
