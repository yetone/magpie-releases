class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2738/magpie-cli-darwin-arm64"
      sha256 "903f450a7cf8ddc14e382d1f4eb4b02b9a3b7810720581d9d4e610f6de16b8ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2738/magpie-cli-darwin-amd64"
      sha256 "c0d26aa3b6b9a477b362274f1a551bcd8b8bbb407e8c1351657565b338238566"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2738/magpie-cli-linux-arm64"
      sha256 "084065c5bc5009e3a46697bc6da8a5f0411ab52ccfe9b5f7161cad9f48f5e1fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2738/magpie-cli-linux-amd64"
      sha256 "15c7419691fbf9f53fee8f8d834d70176eaa3aea38bb9f4e4ee28959f418be18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
