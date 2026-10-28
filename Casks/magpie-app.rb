cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1970"
  sha256 arm:   "7c086ecb40139bc3768db45a7274dd5772d2fafaf9d8fd43a1fea0be5b9e3bc7",
         intel: "71ccd05a0893a55fd479f680848a9a93313074c0a9a0fbc8add3cd8c8fb7fbcf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
