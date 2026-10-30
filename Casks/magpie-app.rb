cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2155"
  sha256 arm:   "0a2e1616a42393e71f124fb92b9081c86b8735f3500f6fb68cd9cc3a8665a2a6",
         intel: "8d80a33ab1c1820e29535fc8a2f0c228c4671c2e9a0d1fe57c3b543f4271ea8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
