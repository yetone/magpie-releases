class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4474/magpie-cli-darwin-arm64"
      sha256 "798b0f75e8ed3af95d6846169312cc9bdc12b07943aac2d24b53c7c8a8535b70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4474/magpie-cli-darwin-amd64"
      sha256 "de1cc1d2886c6fe6f410abc86bf9ff2c32b7b75915d68b72e67fc0732726a7b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4474/magpie-cli-linux-arm64"
      sha256 "c5af3fcbd44a750a0973ab38e0c590b6dfdcce00b3ac81235c00e429f327e9c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4474/magpie-cli-linux-amd64"
      sha256 "6a7e270a36a8a7734c2f0331c285c2dc8f50126c87e147de591e85d6ab5df688"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
