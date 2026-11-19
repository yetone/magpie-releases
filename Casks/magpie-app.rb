cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4568"
  sha256 arm:   "cda3be89c354478f242e7c135f5c9940240b5fc93d6f484599316446b8407160",
         intel: "96b6561d36f9be898e200bdbf3a7a261a59437e10b26f4c3898e52ce88b78906"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
