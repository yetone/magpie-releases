class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1871/magpie-cli-darwin-arm64"
      sha256 "ada46868f03c58e21ac70212a243867069c4e1f17b62c30c96514af577bfcfb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1871/magpie-cli-darwin-amd64"
      sha256 "b32a150a8f9ad914c095c4a32bdeccd9e94e9ffc5360fe47e8011c8fb8b7af98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1871/magpie-cli-linux-arm64"
      sha256 "e6433d5c2d2598b67672db0de1020273205e2f4027c053ed389bbaf84a5a27f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1871/magpie-cli-linux-amd64"
      sha256 "d57573d493330a42a9263e5b9a858224625e8d062c26dfe28d6054cfee40feed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
