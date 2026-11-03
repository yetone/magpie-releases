class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2811/magpie-cli-darwin-arm64"
      sha256 "da786be07b63bf035c3ba54dab9870553d12389700773681fcc00c4dd8ea5348"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2811/magpie-cli-darwin-amd64"
      sha256 "70676c38dca8f7c1cb8803777178306d222c8103cf965b81a56740550b21a78e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2811/magpie-cli-linux-arm64"
      sha256 "81a168689ba5d89f2ff62978c265438e584ea0f317c585452649664b590825ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2811/magpie-cli-linux-amd64"
      sha256 "112c005bca91d08dd4d94cf1468b8dd7c61014aae9ec388498eaaa083df2271e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
