class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2450/magpie-cli-darwin-arm64"
      sha256 "817569950905b35a60023d4601e7ad196046d1fe0cba4b47426f6dd079516952"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2450/magpie-cli-darwin-amd64"
      sha256 "66376614359d140b15a06583d8501ea874e19f1d3242c0f97ee6823188523a2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2450/magpie-cli-linux-arm64"
      sha256 "86290951dc6ff82fe787c958456a0ddb81e410a65ff3202983a4e086eab0fc73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2450/magpie-cli-linux-amd64"
      sha256 "80d18dd79a7c183ad08d0d6026ff2441db14597ea661e7dcf3cb7498f9b66b45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
