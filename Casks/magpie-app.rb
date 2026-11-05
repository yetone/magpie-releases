cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3035"
  sha256 arm:   "eb0f5c097bf69d067f7aecb945fddd4557dded902cf1bf457daa58d2c4bf3c69",
         intel: "ff6553ed688f32287a0a026410447bc1a50d05d1fbaa8107796c1ce29331a030"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
