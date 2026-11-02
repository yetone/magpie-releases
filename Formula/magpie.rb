class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2675/magpie-cli-darwin-arm64"
      sha256 "5cb349ebbfc4415430d8510cb12ef9bfa7613d033b7b46068bb94172687b61b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2675/magpie-cli-darwin-amd64"
      sha256 "56b19abca490591525a9fdd8b31e8325a8f0d6006a9298aeb52b8ab79013ee81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2675/magpie-cli-linux-arm64"
      sha256 "95cdb84398035878340f82ed257ac38df930eca0a7ae2379ad838614aa09d44f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2675/magpie-cli-linux-amd64"
      sha256 "17ffc7c999f6f3162fd3daeda146f23870e29d9964e163647bdffbd235cf8df1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
