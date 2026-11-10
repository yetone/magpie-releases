cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3645"
  sha256 arm:   "7d53b927457ceb80f1d49e784a8c1b2edd5866443e7367f4ea3b2e4b7d5f1134",
         intel: "48011b611637af611bd69e2512a6d99a97e2b22ec692dd1b2b84dc58bddd19f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
