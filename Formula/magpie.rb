class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4902/magpie-cli-darwin-arm64"
      sha256 "675342968e8c369492ce1e0c78807337eca2410acdb74dfd08d1194552c8d007"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4902/magpie-cli-darwin-amd64"
      sha256 "a34a997f5eba185f953565ee973634f5f20ebd4d3cfae9b205c81e44e7819bd3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4902/magpie-cli-linux-arm64"
      sha256 "cccb20674b2224060d2edcfa0aa291b9b28322aa8c60375af62f91a497497945"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4902/magpie-cli-linux-amd64"
      sha256 "b374e43b19148927bcc360bcace43ad95e3af134771aecdfce3fd5c3dc400865"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
