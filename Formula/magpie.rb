class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4397/magpie-cli-darwin-arm64"
      sha256 "d671bceddc175911a2f67aaa4550bcbc0ac0701f07fe6b0cd97122d62c686a77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4397/magpie-cli-darwin-amd64"
      sha256 "a1aaf2832f76b5e7645b93a4a8890cf75af92278ecd13ad0a8f9fa2749d83a21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4397/magpie-cli-linux-arm64"
      sha256 "ede88275111085998c1be75b2f713f5c5a9e4f94cd474b23afb362d7350521ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4397/magpie-cli-linux-amd64"
      sha256 "391278669d4db62d4cc95392a2086730126dc76e8d210587eb3d582c2f194d38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
