class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3324/magpie-cli-darwin-arm64"
      sha256 "e19bcecad4a391bea8d34364c36cd820675e713c07b77d36349d10f25326ce89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3324/magpie-cli-darwin-amd64"
      sha256 "204800fcaef60bcf6f4f7c5852903fb34c4f8fb3b9a7b9e28e3b87d3fe70f1c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3324/magpie-cli-linux-arm64"
      sha256 "cb77247c8848c7314898a25ef344224e0bd56331a3d0d0e5c78007c2fe2754d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3324/magpie-cli-linux-amd64"
      sha256 "8ddd7a4ffbc83724cbd94a6915ffdf54d35b8dec04c4d06c1b23bf8d316727f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
