cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2688"
  sha256 arm:   "a8a98084d6364c1c4f814fe9c8eed7c83e49953ee134f9a9c433d6a0f89ed992",
         intel: "12e540d80263b751c02bf3704266738e83eac439259440884a6caf719341e429"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
