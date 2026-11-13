class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4079/magpie-cli-darwin-arm64"
      sha256 "be0a41844d5a3b4b3fb66b04063f28c5737e9e4b7051d1daa0cd1ef31f3b064d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4079/magpie-cli-darwin-amd64"
      sha256 "f97ad63fa95c1b3af9b40f0403061b7d611795959207f873903918d22dc99ab8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4079/magpie-cli-linux-arm64"
      sha256 "422e55f8895a110bff688289ebc2cc710ba16a1fde8777e9242f9be4370feb37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4079/magpie-cli-linux-amd64"
      sha256 "7130a0db07e03e950b32e2d8e9421ebf7f212e4d6411b9e15a2dac243d44c34d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
