class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2032/magpie-cli-darwin-arm64"
      sha256 "3bc65193035c383fa490a309199b6212340b15b68fda53eccfec7f40ee136f54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2032/magpie-cli-darwin-amd64"
      sha256 "e1077eb74ff11b751538f53a8f960516dbd228fb7eeb07b5935f159748d3d321"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2032/magpie-cli-linux-arm64"
      sha256 "2e118f357fbbd8aee2621c6fb13af4dbb7a3f1ba58a9e6d766bec4c14b90bf38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2032/magpie-cli-linux-amd64"
      sha256 "a5106a64e01a7b0348e4df75e20aaf7232068e51200d6cd3a2ac38ff12236a4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
