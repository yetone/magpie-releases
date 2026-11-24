cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4773"
  sha256 arm:   "87bceb45532c05e509b2ddb7d53e9a0b458895b29efa34e303cb0c5412109770",
         intel: "03d2565c39378f61484587a94790ccd0ca072a1853f2bd00382af99a82c57dfe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
