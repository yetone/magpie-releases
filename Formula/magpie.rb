class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2538/magpie-cli-darwin-arm64"
      sha256 "8d36dcd7707d5ef60330902eee65832d20c8be1985367ddd14053352ebd50b63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2538/magpie-cli-darwin-amd64"
      sha256 "22ce170e9f5cd4711f063a2e7a2dfc72d78224ba866fa116ab5f9559932a1875"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2538/magpie-cli-linux-arm64"
      sha256 "061ea6afd5ad48fdb6f0439f44c246f4cab313830e821647524e0f4171fcfeb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2538/magpie-cli-linux-amd64"
      sha256 "e28659e8a519c52331141c27412fed6d80250b9dd0d4c6e82311b2e0d3ba5b02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
