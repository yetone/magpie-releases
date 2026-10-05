cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1005"
  sha256 arm:   "75f8519c61d1e69fc3bd366867685601d6d2145df61555d91f3d63137b2e9e75",
         intel: "3a0a63af2cc04263db42e6f0fd7f1b19b1427e7df815c3b1672303cd1b7e89ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
