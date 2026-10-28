class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1958/magpie-cli-darwin-arm64"
      sha256 "493d58ef3a3528d07afc002fd26ed43f0cd75e9c532cdb7858e5fed654d7baa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1958/magpie-cli-darwin-amd64"
      sha256 "dd6fea3cca8a4d4bf47cd40617c26cfadce7793afd114dde47649cf89dc8f362"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1958/magpie-cli-linux-arm64"
      sha256 "db2009cda7debfeeb824347823bfc19e41e5a662770cca75caf4eede97ef4b65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1958/magpie-cli-linux-amd64"
      sha256 "658cc07a0b14318180e2ff12d1c23ac66f14a33fde86991675dd5c8fa742825b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
