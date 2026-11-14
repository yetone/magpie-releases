class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4218/magpie-cli-darwin-arm64"
      sha256 "2dd59d5a2e72608ae3abe6ff02f319381218f39aa38768c07ce04eb779f96d06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4218/magpie-cli-darwin-amd64"
      sha256 "393e399ca075538a9c897ac94211a01999c7f11a0cbb9f95b981f1937a390583"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4218/magpie-cli-linux-arm64"
      sha256 "41df1e1c3585f751fec57774611151a4515e418540b772d389500b4e9477a682"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4218/magpie-cli-linux-amd64"
      sha256 "62ccc251b15cfd044eec908ddfba75e012b0cb88a42a97efe77ac869e2d85410"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
