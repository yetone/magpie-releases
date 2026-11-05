cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3005"
  sha256 arm:   "3d2cd5f6fd6a74c4d34ec68965c9379dae9cae3659c55c4616a9d6ae4ea00080",
         intel: "58c31fb2641ced904164d5d7cdff10569a8ba3e4ef98a58cdaf7977fb9697988"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
