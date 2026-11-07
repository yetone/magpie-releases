class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3212/magpie-cli-darwin-arm64"
      sha256 "45ec4c66bf8dfada333b60e90cd73c035170aeefc609364c7e302cb2a1734125"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3212/magpie-cli-darwin-amd64"
      sha256 "839eefbf1e118d75a10a5cc387097af0fba758a8573d6b136d4e27ccb96ea01c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3212/magpie-cli-linux-arm64"
      sha256 "9c7028390523c65344df83f0267d1071c468c4856156f8ddcb9fdb0720719418"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3212/magpie-cli-linux-amd64"
      sha256 "c18438c4c837d1ee3f2cc551bbd1b7f6820a3f2c64bd3b9240864fab5654b57f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
