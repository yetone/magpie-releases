class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2265/magpie-cli-darwin-arm64"
      sha256 "eab118917ae5f5516239039ea897db10e13797b4c426c6617835035975622c19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2265/magpie-cli-darwin-amd64"
      sha256 "c0434ef2491e4435a8b543bed5f106e2a210ebeaf1e29a938d4086c33778a424"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2265/magpie-cli-linux-arm64"
      sha256 "28a6c98c6e7e9f559655d96f2043f71710701b14add1ef06152f55abb76c883d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2265/magpie-cli-linux-amd64"
      sha256 "c1f88cd3ebb307938af75af263a1869bbe15323f7c668b982f3d2293093fed75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
