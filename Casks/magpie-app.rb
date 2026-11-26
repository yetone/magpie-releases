cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4894"
  sha256 arm:   "5332a0b95fe8c52fb465e33e2123fd4924380c11967d59d2e98839a689b0fdf3",
         intel: "c89b45d7eef5ad97546cfc244b1d6a69d468a939c4130c85f0b5e6d99fc57f03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
