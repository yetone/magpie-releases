class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4456/magpie-cli-darwin-arm64"
      sha256 "df837674ee84043a197510aed372edec559b418a4a552eb7637f2b1e681b844c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4456/magpie-cli-darwin-amd64"
      sha256 "1cabc52d68797d3f78efdfa546caff4079d86b68e09987cc2b75d11ad55ef983"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4456/magpie-cli-linux-arm64"
      sha256 "9af09fd8978eb21e21d8db2b647fd0aade462ac3a654339a46ca71a7097a8dfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4456/magpie-cli-linux-amd64"
      sha256 "482457f09dcaa5967236ce76c61691ddacb656d4341710890fa52bdd5699a889"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
