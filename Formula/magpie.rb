class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2917/magpie-cli-darwin-arm64"
      sha256 "685bf5b45bd8b2c5a431d1a8f4f9de901a28678956490a8128e181246d6065ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2917/magpie-cli-darwin-amd64"
      sha256 "fcdab64507269b846335f1be47f281a255c1df0309018fc8a2cf323d3ee1157f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2917/magpie-cli-linux-arm64"
      sha256 "ff82cde0aeb76053ed7e0b08cd98ec49f287bff2b3de272d3b12d3700ccf5f8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2917/magpie-cli-linux-amd64"
      sha256 "dbeed1684acdb19b4bba805b0519c193478dcdc9f1f95edebf2df3518781dfa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
