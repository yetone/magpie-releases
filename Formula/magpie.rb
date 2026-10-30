class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2161/magpie-cli-darwin-arm64"
      sha256 "947468c93204e0dd30f27809aef45236dd710dbd53d2ffdddc88936cebaa5afd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2161/magpie-cli-darwin-amd64"
      sha256 "65a4953562afa7415fce3a951698b427fa7fb46e7c99eaa81f32de230888e87e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2161/magpie-cli-linux-arm64"
      sha256 "74f50386d94f6db8e5ad5f3534d53a94b3743c1d1a0b70efdff6445d0483f52c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2161/magpie-cli-linux-amd64"
      sha256 "81706beaa374c4a6d12331c6ce8b09bb8f5b87256c707fc2aacddbec9a73c18a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
