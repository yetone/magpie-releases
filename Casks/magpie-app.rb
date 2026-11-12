cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3919"
  sha256 arm:   "a8e7ed55931c194d9e1caa7ecbd8dca623281fd6d4fbc2e3c8fed1eff9ee6c8e",
         intel: "f214be3cc37e500b2d2b8c8f70bf81f48898bff7b166575ee2633c9c7829abfa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
