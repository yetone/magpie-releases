cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1125"
  sha256 arm:   "bc15823ae33ac3ec736842b55288527a2d2b622d42b720faacd7a564ceceaf5f",
         intel: "b39d50d1fab2ac88dea70823039dbf630945f3caa39eae3838e6f6b42e2874c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
