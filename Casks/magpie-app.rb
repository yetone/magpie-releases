cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2054"
  sha256 arm:   "0818ea4b6c26ab3debb5449587d574fc9c96fca15a8efe3449852824b74fac09",
         intel: "985dcd6ffd802f5127396a582165118ea312a2b3524a58dc3abe9eceb8382d58"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
