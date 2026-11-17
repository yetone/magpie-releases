cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4368"
  sha256 arm:   "ed69e7fc2180e02b2aa50381ba5675ffcf36e6a82e0b453dc51ed3da218f99d6",
         intel: "7386270009d5e4d7c21e02e72d3e021eb7a9a90119e5945092adff5b8b688686"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
