class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2634/magpie-cli-darwin-arm64"
      sha256 "5130c34ba273ce783da9d9929ca77dfdeb46c9a94748973e8ba27277c24e0c96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2634/magpie-cli-darwin-amd64"
      sha256 "610660f4b57d69eba81e36a521c6d47c0542f60425e813dcb299513739dc1ece"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2634/magpie-cli-linux-arm64"
      sha256 "4cc45c3d43f4cb4539d33f6b23a64e4820580c5e5d08f1246635683c323f4ee7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2634/magpie-cli-linux-amd64"
      sha256 "a9a75b83d4a32837d8ccdf469bed6f871609d83893670b50451df4a085cf4691"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
