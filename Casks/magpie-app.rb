cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.148"
  sha256 arm:   "21db3c72c105c4314a6945f397f0c0408c72d3f2e6718b74e40cc8349983f65c",
         intel: "20cb5cb6546d697c4b3530c13d763614547f4755196c608dc24bcd82a661796d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
