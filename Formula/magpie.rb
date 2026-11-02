class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2721/magpie-cli-darwin-arm64"
      sha256 "0ae28751aaf7ba4f2835afa0cbff77465c07eb5d15974eb805c4721320d05984"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2721/magpie-cli-darwin-amd64"
      sha256 "8639a131188614b01b7ed7717716317dff2a000bc44b8c82e9d03febb4e22c08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2721/magpie-cli-linux-arm64"
      sha256 "9e3063499e4793d52e6d6f22223529c5c049047f7c8aa1621b2b7f8f78148d8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2721/magpie-cli-linux-amd64"
      sha256 "7be2650c05a92e6ad18afd591609efcaee5ca99062c3f03b501a99c72eae698c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
