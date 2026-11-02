cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2740"
  sha256 arm:   "a986609cce0a033a80c6f9ac257aa7187cc06d837bdf13487a2c268354f240e8",
         intel: "213e4a7c735eac858fa965bdc2b88c934f89f9fc66c1384172f2c1d73656ff8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
