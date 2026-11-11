class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3762/magpie-cli-darwin-arm64"
      sha256 "33e540d0d56a7cb1ab9a0f77189d8c8b542f58fa6195bfa6956d17f4a646d0c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3762/magpie-cli-darwin-amd64"
      sha256 "d4dc16cf0f7b844dec06f8ce6f84f5264e254a0a9e3de92107a7fe0f26d5e366"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3762/magpie-cli-linux-arm64"
      sha256 "aeb1b5809df64d366c768ae2b33ee4f9b109ed1c903e3f3a4391a147f4e427e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3762/magpie-cli-linux-amd64"
      sha256 "8207b4da3a2ed92e100441587d30587084d02b09d1f3528a95d5a1b6b58dc744"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
